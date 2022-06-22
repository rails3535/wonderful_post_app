
3.times do |n|
  user = User.find_or_create_by!(email:"user_00#{n + 1}@test.com") do |user|
    user.password = "test1234"
  end
  50.times do |i|
    user.articles.find_or_create_by!(title:"No.#{i+1}:user00#{n + 1}の記事") do |article|
      article.content = "No.#{i+1}:user00#{n + 1}の記事の本文"
    end
  end
end

Tag.create([
  { name: '学習' },
  { name: '転職活動' },
])
