import lit.formats
config.name = 'JSMinifier Test'
config.test_format = lit.formats.ShTest(True)
config.suffixes = ['.js']
config.test_source_root = os.path.dirname(__file__)
config.test_exec_root = os.path.join(config.my_obj_root, 'test')
config.substitutions.append(('%jsm',
    os.path.join(config.my_obj_root, 'js-minifier')))