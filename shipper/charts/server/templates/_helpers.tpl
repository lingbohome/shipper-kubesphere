
{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "extension.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "extension.labels" -}}
helm.sh/chart: {{ include "extension.chart" . }}
{{ include "server.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}


{{/*
Selector labels for server
*/}}
{{- define "server.selectorLabels" -}}
app.kubernetes.io/name: shipper-extension
app.kubernetes.io/instance: {{ .Release.Name }}
shipper.lingbohome.com/component: shipper-server
{{- end }}

{{/*
Common labels for server
*/}}
{{- define "server.labels" -}}
{{ include "extension.labels" . }}
{{- end }}