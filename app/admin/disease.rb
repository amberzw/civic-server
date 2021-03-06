ActiveAdmin.register Disease do
  menu priority: 9
  permit_params :doid, :name

  filter :name
  filter :doid

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs do
      f.input :name
      f.input :doid, input_html: { rows: 1 }
    end
    f.actions
  end

  index do
    selectable_column
    column :name
    column :doid
    column :created_at
    column :updated_at
    actions
  end

  show do |f|
    attributes_table do
      row :name
      row :doid
      row :evidence_item_count do |d|
        d.evidence_items.count
      end
    end
  end
end