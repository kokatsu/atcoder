import std;

struct Box {
    int id, balls;

    int opCmp(const Box that) const {
        if (this.balls == that.balls) {
            return this.id - that.id;
        }
        return this.balls - that.balls;
    }
}

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto A = readln.chomp.split.to!(int[]);

    auto boxes = new int[](N + 1);
    auto rbt = new RedBlackTree!(Box, "a < b")();
    foreach (i; 0 .. N) {
        rbt.insert(Box(i + 1, boxes[i]));
    }

    auto B = new int[](Q);

    foreach (i, a; A) {
        if (a > 0) {
            rbt.removeKey(Box(a, boxes[a]));
            ++boxes[a];
            rbt.insert(Box(a, boxes[a]));
            B[i] = a;
        }
        else {
            auto f = rbt.front;
            rbt.removeFront;
            ++boxes[f.id];
            rbt.insert(Box(f.id, boxes[f.id]));
            B[i] = f.id;
        }
    }

    string res = format("%(%s %)", B);
    res.writeln;
}
