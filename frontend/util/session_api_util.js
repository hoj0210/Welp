export const signup = (user) => (
    {
        url: '/api/user',
        method: 'POST',
        data: { user }
    }
)

export const login = (user) => (
    {
        url: '/api/session',
        method: 'POST',
        data: { user }
    }
)

export const logout = () => (
    {
        url: '/api/session',
        method: 'DELETE'
    }
)