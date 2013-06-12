task :setup do
  ['vimrc', 'gvimrc'].each do |dotfile|
    create_symlink dotfile
  end
end

task :default => :setup

def create_symlink dotfile
  symlink = "~/.#{dotfile}"

  symlink_path = File.expand_path symlink
  dotfile_path = File.expand_path dotfile

  if File.exists? symlink_path
    puts "Removing #{symlink} and replacing it with #{dotfile}."

    File.delete symlink_path
  end

  File.symlink dotfile_path, symlink_path
end
