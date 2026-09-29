import std;

struct Sweet {
    int number, price, deliciousness;

    int opCmp(const Sweet that) const {
        if (this.price != that.price) {
            return that.price - this.price;
        }

        if (this.deliciousness != that.deliciousness) {
            return this.deliciousness - that.deliciousness;
        }

        return that.number - this.number;
    }
}

void main() {
    int N, L, R, T;
    readfln("%d %d %d %d", N, L, R, T);

    auto rbt = new RedBlackTree!(Sweet, "a > b");
    foreach (i; 0 .. N) {
        int P, S;
        readfln("%d %d", P, S);

        if (L <= P && P <= R && T <= S) {
            rbt.insert(Sweet(i + 1, P, S));
        }
    }

    int res = rbt.empty ? -1 : rbt.front.number;
    res.writeln;
}
