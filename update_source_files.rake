require 'net/http'

desc 'Updates jquery.form JS files from repository at https://github.com/jquery-form/form'
task :update_source_files do
  ['src/jquery.form.js', 'dist/jquery.form.min.js', 'dist/jquery.form.min.js.map'].each do |file|
    uri = URI("https://raw.githubusercontent.com/jquery-form/form/master/#{file}")
    data = Net::HTTP.get(uri)
    File.open("vendor/assets/javascripts/#{file.split('/').pop}", 'w') do |f|
      f.write data
    end
  end
end