import std;

void main() {
    string W;
    readf("%s\n", W);

    auto re = regex(r"[aiueo]");

    string res = W.replaceAll(re, "");
    res.writeln;
}
