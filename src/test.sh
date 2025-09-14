EXPECTED="Hello, Test!"

OUTPUT=$(node -e "console.log(require('./src/app.js').greet('Test'))")

if [ "$OUTPUT" == "$EXPECTED" ]; then
    echo "✅ Test passed!"
    exit 0
else
    echo "❌ Test failed Expected: $EXPECTED, but got: $OUTPUT"
    exit 1
fi