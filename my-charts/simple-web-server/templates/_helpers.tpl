
{{/*
chart name
*/}}

{{- define "my-server.name" }}
{{ default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}  
{{- end }}

{{/*
application full name
*/}}


{{- define "my-server.selectorLabels" -}} 
app.kubernetes.io/name: {{ include "my-server.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end  }}
