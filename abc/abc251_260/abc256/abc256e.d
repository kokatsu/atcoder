import std;

struct Person {
    long number, frustration;
}

void main() {
    long N;
    readf("%d\n", N);

    auto X = readln.chomp.split.to!(long[]);
    auto C = readln.chomp.split.to!(long[]);

    X[] -= 1;

    auto F = new long[](N);
    foreach (i, x; X) {
        F[x] += C[i];
    }

    auto rbt = new RedBlackTree!(Person,
            "a.frustration != b.frustration ? a.frustration < b.frustration : a.number < b.number")();
    foreach (i, f; F) {
        rbt.insert(Person(i.to!long, f));
    }

    long res;
    foreach (i; 0 .. N) {
        auto f = rbt.front;
        rbt.removeFront;

        long n = f.number, x = X[n];
        res += f.frustration;

        auto t = rbt.removeKey(Person(x, F[x]));
        if (t == 0)
            continue;

        F[x] -= C[n];
        rbt.insert(Person(x, F[x]));
    }

    res.writeln;
}
