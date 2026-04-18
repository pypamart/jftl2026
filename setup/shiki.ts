import { defineShikiSetup } from '@slidev/types'
import { bundledLanguages } from 'shiki'

export default defineShikiSetup(async () => {
  // Shiki bundles Gherkin as 'gherkin', but Slidev infers the language id
  // from the .feature file extension, producing the unknown id 'feature'.
  // Load the bundled gherkin grammar and expose it under the name 'feature'.
  const mod = await bundledLanguages.gherkin()
  const grammar = mod.default[0]

  return {
    langs: [
      {
        ...grammar,
        name: 'feature',
        aliases: ['gherkin', 'cucumber', ...(grammar.aliases ?? [])],
      },
    ],
  }
})
