module PageHelper
  def job_title(link)
    splitter(link)
  end

  private

  def remove_query_string(url)
    url.value.split('?').first
  end

  def splitter(link)
    remove_query_string(link).split('https://www.linkedin.com/jobs/view/').last.tr('0-9', '')
  end
end
