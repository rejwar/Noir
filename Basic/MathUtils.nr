// File: MathUtils.nr
mod MathUtils {
    pub fn Power(base: field, exponent: field) -> field {
        let mut Result = 1;
        for _ in 0..exponent {
            Result = Result * base;
        }
        Result
    }
}
