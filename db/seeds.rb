# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#  new user
@user = User.new(:email => 'admin@gmail.com', :password => '123456', :password_confirmation => '123456', :role => 0)
@user.save

# @s = User.create(:email => 'sutdent@gmail.com', :password => 'pgvm,6g/', :password_confirmation => 'pgvm,6g/', :role => 2)

# @t = User.create(:email => 'teacher@gmail.com', :password => 'pgxl3g', :password_confirmation => 'pgxl3g', :role => 1)

@user1 = User.new(:email => 'store1@gmail.com', :password => '123456', :password_confirmation => '123456', :role => 2)
@user1.save

# Region
Region.create(:title => '高屏', :seq => 1);
Region.create(:title => '雲嘉南', :seq => 2);
Region.create(:title => '中彰投', :seq => 3);
Region.create(:title => '桃竹苗', :seq => 4);
Region.create(:title => '北北基', :seq => 5);
Region.create(:title => '宜花東', :seq => 6);

# Store
region = Region.find_by(title: '雲嘉南')
Store.create!(
  region_id: region.id,
  title_zh_tw: '康橋慢旅本館',
  address_zh_tw: '700 台南市中西區民生路二段416號',
  title_en: 'kindness慢旅本館',
  address_en: 'No.416, Sec. 2, Minsheng Rd., West Central Dist., Tainan City 70060, Taiwan (R.O.C.)',
  seq: 1,
  display: true
)

Setting.create!

#  food 固定四筆
Food.create!(food_type: 0, type_zh_tw: '早餐',title_en: 'Breakfast',subtitle_zh_tw: '早餐早餐早餐早餐早餐', desc_en: 'breakfast')
Food.create!(food_type: 1, type_zh_tw: '小吃',title_en: 'Snak bar',subtitle_zh_tw: '小吃小吃小吃小吃小吃小吃', desc_en: 'Snak barSnak barSnak barSnak barSnak barSnak bar')
Food.create!(food_type: 2, type_zh_tw: '晚餐',title_en: 'supper',subtitle_zh_tw: '晚餐晚餐晚餐晚餐晚餐', desc_en: 'suppersuppersuppersuppersupper')
Food.create!(food_type: 3, type_zh_tw: '就是Bar',title_en: 'bar',subtitle_zh_tw: '就是Bar就是Bar就是Bar就是Bar', desc_en: 'barbarbarbarbarbarbarbar')

# default food banner
Banner.create(image_type: 1)
