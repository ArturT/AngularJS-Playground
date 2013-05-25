module HomeHelper
  def pages_names
    file_names = Dir.entries(Rails.root+"app/views/pages").select { |f| f.match(/^[0-9]/) }
    hash_file_names = {}
    file_names.each do |name|
      hash_file_names[name.match(/^[0-9]+/)[0].to_i] = name.split('.html.erb').first
    end
    hash_file_names.sort.map { |_,v| v }
  end
end
