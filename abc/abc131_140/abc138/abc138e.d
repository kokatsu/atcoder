import std;

void main() {
    auto s = readln.chomp;
    auto t = readln.chomp;

    auto p = new long[][](26);
    foreach (i, x; s)
        p[x - 'a'] ~= i + 1;

    auto pos = new SortedRange!(long[], "a < b")[](26);
    foreach (i; 0 .. 26)
        pos[i] = p[i].assumeSorted;

    long len = s.length.to!long;
    long idx, cnt;
    foreach (x; t) {
        if (pos[x - 'a'].empty) {
            cnt = -1;
            break;
        }

        auto u = pos[x - 'a'].upperBound(idx);
        if (u.empty) {
            ++cnt;
            idx = pos[x - 'a'].front;
        }
        else {
            idx = u.front;
        }
    }

    long res = (cnt == -1 ? -1 : cnt * len + idx);
    res.writeln;
}
