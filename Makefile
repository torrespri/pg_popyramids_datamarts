MODULES = isbn_issn
EXTENSION = pg_popyramids_datamarts
sql/$(EXTENSION)--1.0.0.sql: sql/types/*.sql sql/functions/*.sql sql/casts/*.sql sql/materialized_views/*.sql
	cat $^ > $@
DATA = $(wildcard sql/*--*.sql) sql/$(EXTENSION)--1.0.0.sql
DOCS = $(wildcard doc/*.md)
PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
