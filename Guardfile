guard "bundler" do
  watch("Gemfile")
  watch(/\.gemspec$/)
end

guard "rspec" do
  watch("lib/blobbet.rb")             { "spec" }
  watch(%r{^lib/blobbet/(.+)\.rb$})   { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^spec/.+_spec\.rb$})
  watch("spec/helper.rb")             { "spec" }
end
