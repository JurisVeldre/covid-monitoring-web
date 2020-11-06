# frozen_string_literal: true

class ApplicationModelForm
  attr_reader :object

  # Necessary for correct form_for behaviour
  delegate :id, :persisted?, to: :object

  class << self
    attr_accessor :object_class_name

    def reflect_on_association(*args)
      object_class.reflect_on_association(*args)
    end

    def validators_on(*args)
      super + object_class.validators_on(*args)
    end

    def object_class
      return @object_class if defined?(@object_class)

      unless object_class_name
        suggested_class_name = name.split('::')[-2]&.singularize || '<model name>'

        raise "object_class_name must be defined for classes inheriting ApplicationModelForm\n" \
          "Did you forget?  self.object_class_name = '#{suggested_class_name}'"
      end

      @object_class = object_class_name.constantize
    end
  end

  def initialize(object)
    @original_object = object.dup
    @object = object
  end

  def update(attributes = {})
    object.assign_attributes(attributes)
    save
  end
  alias create update

  private

  def form_and_object_valid?
    object.valid?
    valid?

    if object.errors.blank? && errors.blank?
      true
    else
      errors.merge!(object.errors)

      false
    end
  end

  def save(raise_error: false)
    if form_and_object_valid?
      raise_error ? object.save! : object.save
    else
      raise 'Invalid!', object if raise_error

      false
    end
  end

  def save!
    save(raise_error: true)
  end

  def validate_and_handle_result
    return false unless form_and_object_valid?

    result = yield

    result.errors.each { |error| errors.add(:base, error) } unless result.success?

    result.success?
  end
end
