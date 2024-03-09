import std;

struct Item {
    int pos, val;
}

alias less = binaryFun!"a.val == b.val ? a.pos < b.pos : a.val > b.val";

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(int[]);

    auto items = new RedBlackTree!(Item, less)[](K);
    foreach (i; 0 .. K) {
        items[i] = new RedBlackTree!(Item, less)();
    }

    foreach (i, a; A) {
        items[i%K].insert(Item(i.to!int, a));
    }

    int k, pos;
    int[] res;
    while (!items[k].empty) {
        auto f = items[k].front;
        items[k].removeFront;
        while (!items[k].empty && f.pos < pos) {
            f = items[k].front;
            items[k].removeFront;
        }

        if (f.pos >= pos) {
            res ~= f.val;
            pos = f.pos;
            k = (k + 1) % K;
        }
    }

    writefln("%(%s %)", res);
}