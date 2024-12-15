import std;

struct S {
    long wid, len, box;
}

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(long[]);
    auto B = readln.chomp.split.to!(long[]);

    auto C = readln.chomp.split.to!(long[]);
    auto D = readln.chomp.split.to!(long[]);

    S[] list;
    foreach (a, b; zip(A, B))
        list ~= S(a, b, 0);
    foreach (c, d; zip(C, D))
        list ~= S(c, d, 1);

    list.sort!"a.wid == b.wid ? a.box > b.box : a.wid > b.wid";

    bool isOK = true;
    auto rbt = new RedBlackTree!(long, "a < b", true)();
    foreach (l; list) {
        if (l.box == 1) {
            rbt.insert(l.len);
        }
        else {
            auto ub = rbt.upperBound(l.len - 1);
            if (ub.empty) {
                isOK = false;
            }
            else {
                rbt.removeKey(ub.front);
            }
        }
    }

    writeln(isOK ? "Yes" : "No");
}
