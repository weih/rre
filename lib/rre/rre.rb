module Renamer
  class Renamer
    class << self
      def rename(from, to)
        Dir.glob("*.#{from}") { |f| File.rename(f, "#{File.basename(f, ".#{from}")}.#{to}") }
      end
    end
  end
end
