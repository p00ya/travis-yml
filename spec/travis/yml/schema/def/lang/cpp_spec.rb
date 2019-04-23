describe Travis::Yml::Schema::Def::Cpp, 'structure' do
  describe 'definitions' do
    subject { Travis::Yml.schema[:definitions][:language][:cpp] }

    # it { puts JSON.pretty_generate(subject) }

    it do
      should eq(
        '$id': :language_cpp,
        title: 'Language Cpp',
        type: :object,
        normal: true
      )
    end
  end
end
