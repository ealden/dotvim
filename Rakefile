task :setup do
  ['vimrc', 'gvimrc'].each do |file|
    symlink = File.expand_path "~/.#{file}"
    dotfile = File.expand_path file

    FileUtils.ln_sf dotfile, symlink
  end

  `git submodule --quiet init`
  `git submodule --quiet update`
end

task :default => :setup
