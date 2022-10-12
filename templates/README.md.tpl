### Hi there 👋

I’m @pwnyprod / phY (Jonas Hoppe) a mainly PHP Developer working on valantic CEC Deutschland GmbH who wanna learn all
the stuff on the Internet and while this is clearly impossible for now I started with Python and Typescript stuff.
I love to explore new Technology and Software.

If you wanna contact me or just wanna have a talk or a question from a Projekt I collaborate, feel free to contact me.

#### Contact

Website: [it-jh.de](https://it-jh.de)

Discord: [Invite](https://dc.phy0.de)

Mail: info@it-jh.de

#### � My GitHub Statistics

![GitHub stats](https://github-readme-stats.vercel.app/api?username=pwnyprod&show_icons=true&theme=radical)

#### � Check out what I'm currently working on
{{range recentContributions 10}}
- [{{.Repo.Name}}]({{.Repo.URL}}) - {{.Repo.Description}} ({{humanize .OccurredAt}})
{{- end}}

#### � My latest projects
{{range recentRepos 10}}
- [{{.Name}}]({{.URL}}) - {{.Description}}
{{- end}}

#### � Latest releases I've contributed to
{{range recentReleases 10}}
- [{{.Name}}]({{.URL}}) ([{{.LastRelease.TagName}}]({{.LastRelease.URL}}), {{humanize .LastRelease.PublishedAt}}) - {{.Description}}
{{- end}}

#### � My recent Pull Requests
{{range recentPullRequests 10}}
- [{{.Title}}]({{.URL}}) on [{{.Repo.Name}}]({{.Repo.URL}}) ({{humanize .CreatedAt}})
{{- end}}

#### � Gists I wrote
{{range gists 5}}
- [{{.Description}}]({{.URL}}) ({{humanize .CreatedAt}})
{{- end}}

#### ⭐ Recent Stars
{{range recentStars 10}}
- [{{.Repo.Name}}]({{.Repo.URL}}) - {{.Repo.Description}} ({{humanize .StarredAt}})
{{- end}}
