# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Video.destroy_all

Video.create([{embed_url: "122534298.hd.mp4?s=db0749c7d1550c7cb8cf6974b52e9f50", video_title: "Hulk Smash", tag_list: "Scan For Compliance, TPR, Jennifer Hampton"}, {embed_url: "77240001.sd.mp4?s=58bce9422c63b974933b8c87f29a7632", video_title: "Build a House", tag_list: "Anna Hickman, PreK3, TPR"}, {embed_url: "77235579.hd.mp4?s=1219986042856c636130d939d12f0101", video_title: "Cone", tag_list: "TPR, Jennifer Hampton, Purposeful Wait Time, Teacher Student Talking Cues"}])