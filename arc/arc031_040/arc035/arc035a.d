import std;

void main() {
    string s;
    readfln("%s", s);

    size_t l = s.length;
    string res = "YES";
    foreach (i; 0 .. l / 2) {
        if (s[i] != s[l - 1 - i] && s[i] != '*' && s[l - 1 - i] != '*') {
            res = "NO";
            break;
        }
    }

    res.writeln;
}
