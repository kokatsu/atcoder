import std;

void main() {
    string A, B;
    readf("%s\n%s\n", A, B);

    int c = compareArray(A, B);

    string res = "EQUAL";
    if (c > 0)
        res = "GREATER";
    if (c < 0)
        res = "LESS";

    res.writeln;
}

int compareArray(T)(T x, T y) if (isArray!T) {
    if (x.length != y.length) {
        return x.length > y.length ? 1 : -1;
    }
    else if (x != y) {
        foreach (u, v; zip(x, y)) {
            if (u == v)
                continue;
            return u > v ? 1 : -1;
        }
    }
    return 0;
}
