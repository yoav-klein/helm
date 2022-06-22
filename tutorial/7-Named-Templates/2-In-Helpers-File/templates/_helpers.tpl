{{- define "foo.labels" }}
  labels:
     generator: helm
     date: {{ now | htmlDate }}
{{- end}}

