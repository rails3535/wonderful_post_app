
3.times do |n|
  user = User.find_or_create_by!(name: "#{n + 1}",email: "user00#{n + 1}@test.com",encrypted_password: "test1234") do |user|
    user.email = "user00#{n + 1}@test.com"
    user.encrypted_password = "test1234"
    user.id = "#{n + 1}"
  end
  50.times do |i|
    user.articles.find_or_create_by!(title:"No.#{i+1}:user00#{n + 1}の記事",content:"No.#{i+1}:user00#{n + 1}の記事の本文") do |article|
      article.title = "No.#{i+1}:user00#{n + 1}の記事"
      article.content = "No.#{i+1}:user00#{n + 1}の記事の本文"
      article.user_id = "#{n + 1}"
    end
   end
end
