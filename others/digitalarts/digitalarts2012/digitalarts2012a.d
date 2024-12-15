import std;

void main() {
    auto s = readln.chomp.split;

    int N;
    readf("%d\n", N);

    foreach (_; 0 .. N) {
        string t;
        readf("%s\n", t);

        auto a = t.length;

        foreach (ref x; s) {
            auto b = x.length;
            if (b != a)
                continue;

            bool isOK = true;
            foreach (u, v; zip(t, x)) {
                if (u == '*' || u == v)
                    continue;

                isOK = false;
            }

            if (isOK) {
                x = '*'.repeat(a).array.to!string;
            }
        }
    }

    auto res = s.join(" ");
    res.writeln;
}
