p "create Cerlists"
Carlist.create!(
  name: '月の輪自動車教習所',
  text: '教習生の満足度が一番高く、大学からも一番近い',
  period: 401415,
  profile_image: open("#{Rails.root}/db/dummy_images/1.jpg")
)
Carlist.create!(
  name: '膳所自動車教習所',
  text: '安さを求めるならココ！',
  period: 401415,
  profile_image: open("#{Rails.root}/db/dummy_images/2.jpg")
)
Carlist.create!(
  name: 'アヤハ自動車教習所',
  text: '草津駅側で下宿されている方にオススメ！',
  period: 401415,
  profile_image: open("#{Rails.root}/db/dummy_images/3.jpg")
)
