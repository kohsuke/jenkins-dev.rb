require 'thor'
require 'launchy'

module Jenkins
  module Dev
    class CLI < Thor

      desc "jira COMPONENT", "Open issues"
      def jira(component)
        Launchy.open("https://issues.jenkins-ci.org/secure/IssueNavigator.jspa?reset=true&jqlQuery=project+%3D+JENKINS+AND+component+%3D+#{component}+AND+status+%3D+Open+ORDER+BY+issueKey+DESC&mode=hide")
      end
    end
  end
end