
DependencyDetection.defer do
  @name = :yoga_pants
  
  depends_on do
    defined?(::YogaPants::Client) && !NewRelic::Control.instance['disable_yoga_pants_instrumentation']
  end
  
  executes do
    NewRelic::Agent.logger.debug 'Installing Yoga Pants instrumentation'
  end
  
  executes do
    ::YogaPants::Client.class_eval do
      add_method_tracer :get,     'ElasticSearch/get'
      add_method_tracer :post,    'ElasticSearch/post'
      add_method_tracer :put,     'ElasticSearch/puts'
      add_method_tracer :delete,  'ElasticSearch/delete'
      add_method_tracer :exists?, 'ElasticSearch/exists'
      add_method_tracer :bulk,    'ElasticSearch/bulk'
    end
  end
end

