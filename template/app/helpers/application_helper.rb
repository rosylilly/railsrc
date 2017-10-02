module ApplicationHelper
  def default_meta_tags
    {
      title: default_title,
      site: t('application.meta.name'),
      separator: t('application.meta.separator', default: '-'),
      canonical: canonical_href,
      reverse: true
    }
  end

  def default_title
    scopes = (controller_path.split('/') + [action_name]).select(&:present?)

    defaults = scopes.map.with_index do |scope, index|
      scope = scopes[0..index]
      scope.join('.') + '.title'
    end
    defaults.reverse!
    defaults.push('')

    scope = defaults.shift
    t(scope, default: defaults)
  end
end
