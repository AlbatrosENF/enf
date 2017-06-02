ActiveAdmin.register Event do
  permit_params :title, :happen_on, :place, :parents, :pinned

  index do
    selectable_column
    id_column
    column :title
    column :happen_on
    column :place
    column :parents
    column :pinned
    actions
  end

  filter :title
  filter :happen_on
  filter :place
  filter :parents
  filter :pinned

  form do |f|
    f.inputs "Détails de l'évènement" do
      f.input :title
      f.input :happen_on, as: :datepicker
      f.input :place
      f.input :parents
      f.input :pinned
    end
    f.actions
  end

end