class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :IDSP
      t.text :TENSP
      t.date :NGAYPHATHANH
      t.text :ANH
      t.text :ANHHOVER
      t.text :ANHCHITIET
      t.text :GENDER
      t.text :AGE
      t.integer :GIABAN
      t.integer :GIAGOC
      t.text :SALE
      t.text :COLOR
      t.text :COLORDT
      t.text :FRANCHISE
      t.text :PRODUCTTYPE
      t.text :BRAND
      t.text :CATEGORY
      t.text :SPORTS
      t.text :MIADIDAS
      t.text :TEAMNAME
      t.text :PARNER
      t.text :DESCRIPTION_H5
      t.text :DESCRIPTION_P
      t.text :SPECIFICATIONS
      t.text :CARE

      t.timestamps
    end
  end
end
