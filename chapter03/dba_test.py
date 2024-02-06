import pytest


@pytest.mark.parametrize("package", ["git", 
                                     "mariadb105", 
                                     "python3-pip", 
                                     "unzip", 
                                     "java-1.8.0-amazon-corretto"])
def test_package_is_installed(host, package):
    pkg = host.package(package)
    assert pkg.is_installed

@pytest.mark.parametrize("cmd", ["ansible --version",
                                 "aws --version",
                                 "flyway version",
                                 "liquibase -version"])
def test_command(host, cmd):
    cmd = host.run(cmd)
    assert cmd.succeeded


