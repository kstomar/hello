ActiveAdmin.register Advice do
  permit_params :measured, :control, :your_home, :acceptable_range, :description, potential_causes_attributes: [:id, :point, :_destroy]

  form do |f|
    f.actions
    f.semantic_errors  *f.object.errors.keys
    f.inputs do
      f.input :measured
      f.input :control
      f.input :your_home
      f.input :acceptable_range
      f.input :description
    end

    f.inputs 'Potential causes' do
      f.has_many :potential_causes, heading: '', allow_destroy: true do |p|
        p.input :point
      end
    end
  end
end
