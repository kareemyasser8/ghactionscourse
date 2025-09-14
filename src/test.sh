EXPECTED="Hello, Test!"
EXPECTED_ADD=3

OUTPUT=$(node -e "console.log(require('./src/app.js').greet('Test'))")

if [ "$OUTPUT" == "$EXPECTED" ]; then
    echo "✅ Test passed!"
    exit 0
else
    echo "❌ Test failed Expected: $EXPECTED, but got: $OUTPUT"
    exit 1
fi

OUTPUT=$(node -e "console.log(require('./src/app.js').add(1, 2))")

if [ "$OUTPUT" == "$EXPECTED_ADD" ]; then
    echo "✅ Test passed!"
    exit 0
else
    echo "❌ Test failed Expected: $EXPECTED_ADD, but got: $OUTPUT"
    exit 1
fi