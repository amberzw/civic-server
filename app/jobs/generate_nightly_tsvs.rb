class GenerateNightlyTsvs < GenerateTsvs
  def perform
    super
    self.class.set(wait_until: Date.tomorrow.midnight).perform_later
  end

  private
  def release_path
    'nightly'
  end

  def filename_prefix
    release_path
  end
end
