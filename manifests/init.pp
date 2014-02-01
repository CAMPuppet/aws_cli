class aws_cli {
    exec{ "install_pip":
        command => "easy_install pip && pip install setuptools --no-use-wheel --upgrade",
        returns => [ 0, 1, 255 ]
    }

    exec{ "install_aws_tools":
        command => "pip install awscli",
        returns => [ 0, 1, 255 ],
        require => Exec["install_pip"],
    }
}
