package main

import (
	_ "github.com/cirocosta/registrator/consul"
	_ "github.com/cirocosta/registrator/consulkv"
	_ "github.com/cirocosta/registrator/etcd"
	_ "github.com/cirocosta/registrator/skydns2"
	_ "github.com/cirocosta/registrator/zookeeper"
)
