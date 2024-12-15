import std;

void main() {
    string S = readln.chomp;

    auto cnt = new int[](2);
    foreach (s; S) {
        ++cnt[s - '0'];
    }

    int res = cnt.minElement * 2;
    res.writeln;
}
