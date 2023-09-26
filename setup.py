from setuptools import setup

ksconf_version = "0.11.8-rc1"

setup(name="ksconf-pre-commit",
      version=ksconf_version,
      install_requires=[
          f"ksconf=={ksconf_version}",
          "lxml>=4.6.5",
      ],
      description="Pre-commit hooks for ksconf",
      author="Lowell Alleman",
      url="https://github.com/Kintyre/ksconf-pre-commit",
      )
