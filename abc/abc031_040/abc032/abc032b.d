import std;

void main() {
    string s;
    int k;
    readf("%s\n%d\n", s, k);

    auto l = s.length.to!int;

    int[string] password;
    foreach (i; 0 .. l - k + 1)
        ++password[s[i .. i + k]];

    auto res = password.length;
    res.writeln;
}
