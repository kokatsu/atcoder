import std;

void main() {
    string S;
    readf("%s\n", S);

    string res = format("%(%c %)", S);
    res.writeln;
}
