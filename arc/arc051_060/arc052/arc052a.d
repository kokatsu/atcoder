import std;

void main() {
    string S;
    readfln("%s", S);

    auto pattern = regex(`(?<!\d)\d{1,2}(?!\d)`);

    string res = S.matchFirst(pattern).front;
    res.writeln;
}
