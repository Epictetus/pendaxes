require_relative 'pending_manager'
require_relative 'defaults'
require_relative 'finder'
require 'hashr'

module Pendaxes
  class Detector
    extend Defaults
    extend Finder
    find_in 'pendaxes/detectors'

    defaults allowed_for: 604800

    def initialize(workspace, config={})
      @config = Hashr.new(self.class.defaults.merge(config))
      @workspace = workspace
      @pendings = []
    end

    def detect
    end
  end
end
