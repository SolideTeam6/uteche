class Student < ActiveRecord::Base
    mount_uploader :imagen, ImageUploader
    
    validates_processing_of :imagen
    validate :image_size_validation

    private
    def image_size_validation
        errors[:imagen] << "should be less than 500KB" if imagen.size > 0.5.megabytes
    end
end
