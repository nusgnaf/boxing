# frozen_string_literal: true

module Boxing
  # The config of boxing
  #
  # @since 0.5.0
  class Config
    # @!attribute root
    #   @return [String] the application root
    #
    # @since 0.5.0
    attr_accessor :root, :name, :registry, :ignores, :port,
                  :health_check, :health_check_path,
                  :assets_precompile, :node_version,
                  :build_packages, :runtime_packages,
                  :revision, :sentry_release,
                  :entrypoint, :command

    # @since 0.5.0
    def initialize(&block)
      @name = 'myapp'
      @root = '/src/app'
      @port = 9292
      @health_check_path = '/status'
      @assets_precompile = false

      instance_exec(self, &block) if defined?(yield)
    end
  end
end
