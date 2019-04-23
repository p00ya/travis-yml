describe Travis::Yml::Schema::Def::Addon::Homebrew, 'structure' do
  describe 'definitions' do
    subject { Travis::Yml.schema[:definitions][:addon][:homebrew] }

     # it { puts JSON.pretty_generate(subject) }

    it do
      should eq(
        '$id': :addon_homebrew,
        title: 'Addon Homebrew',
        anyOf: [
          {
            type: :object,
            properties: {
              update: {
                type: :boolean
              },
              packages: {
                '$ref': '#/definitions/strs'
              },
              casks: {
                '$ref': '#/definitions/strs'
              },
              taps: {
                '$ref': '#/definitions/strs'
              },
              brewfile: {
                type: :string
              }
            },
            additionalProperties: false,
            normal: true,
            prefix: :packages,
            changes: [
              {
                change: :enable
              }
            ],
          },
          {
            '$ref': '#/definitions/strs'
          },
          {
            type: :boolean
          }
        ]
      )
    end
  end

  describe 'schema' do
    subject { described_class.new.schema }

    it do
      should eq(
        '$ref': '#/definitions/addon/homebrew'
      )
    end
  end
end
