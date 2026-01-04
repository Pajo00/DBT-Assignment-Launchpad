{% macro log_run(model_name, status, row_count) %}
insert into analytics_run_log(
  model_name,
  environment,
  status,
  row_count,
  run_timestamp
)
values(
  '{{ model_name }}',
  '{{ target.name }}',
  '{{ status }}',
  {{ row_count }},
  now()
);
{% endmacro %}
