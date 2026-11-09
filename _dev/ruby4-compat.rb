# Local-only shim: Jekyll 3.9 / Liquid 4 (GitHub Pages) call String#tainted?, removed in Ruby 3.2.
# Use: RUBYOPT="-r./_dev/ruby4-compat.rb" bundle exec jekyll serve
class Object
  def tainted?; false; end
  def taint; self; end
  def untaint; self; end
  def trust; self; end
  def untrust; self; end
  def untrusted?; false; end
end
