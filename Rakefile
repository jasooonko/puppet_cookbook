SSH = 'ssh -l root' 
desc "Run Puppet on ENV['CLIENT']" 
task :apply do 
    client = ENV['CLIENT']
    sh "echo #{client}"
    sh "git push" 
    sh "#{SSH} #{client} pull-updates" 
end

