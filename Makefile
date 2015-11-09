MODULES = isbn_issn
EXTENSION = pg_popyramids_datamarts
sql/$(EXTENSION)--1.0.0.sql: sql/tables/*.sql sql/functions/*.sql sql/triggers/*.sql
	cat $^ > $@
DATA = $(wildcard updates/*--*.sql) sql/$(EXTENSION)--1.0.0.sql
DOCS = $(wildcard doc/*.md)
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
