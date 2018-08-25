json.extract! record, :id, :day, :height, :weight, :bmi, :highblood, :lowblood, :diary, :picture, :targetbmi, :targetweight, :compareweight, :created_at, :updated_at
json.url record_url(record, format: :json)
